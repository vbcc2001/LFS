.class public Lcom/adsdk/sdk/RequestBannerAd;
.super Lcom/adsdk/sdk/RequestAd;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/RequestBannerAd;->is:Ljava/io/InputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Parse is null"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/RequestBannerAd;->is:Ljava/io/InputStream;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_11
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

.method private getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_18

    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private getInteger(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_3
.end method

.method private getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_20

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "yes"

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/RequestBannerAd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/BannerAd;
    .registers 8

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/BannerAd;

    invoke-direct {v1}, Lcom/adsdk/sdk/BannerAd;-><init>()V

    :try_start_9
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    sget-boolean v3, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    if-eqz v3, :cond_3c

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/RequestBannerAd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad RequestPerform HTTP Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :cond_3c
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_5c

    new-instance v0, Lcom/adsdk/sdk/RequestException;

    const-string v1, "Cannot parse Response, document is not an xml"

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_53} :catch_53
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_53} :catch_79
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_53} :catch_150
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_53} :catch_1ca

    :catch_53
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5c
    :try_start_5c
    const-string v3, "error"

    invoke-direct {p0, v0, v3}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_82

    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Response received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_79
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5c .. :try_end_79} :catch_53
    .catch Lorg/xml/sax/SAXException; {:try_start_5c .. :try_end_79} :catch_79
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_79} :catch_150
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_79} :catch_1ca

    :catch_79
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_82
    :try_start_82
    const-string v3, "type"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    const-string v2, "imageAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    const-string v2, "bannerwidth"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setBannerWidth(I)V

    const-string v2, "bannerheight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setBannerHeight(I)V

    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setClickUrl(Ljava/lang/String;)V

    const-string v2, "imageurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setImageUrl(Ljava/lang/String;)V

    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setRefresh(I)V

    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setScale(Z)V

    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipPreflight(Z)V

    :goto_e3
    return-object v1

    :cond_e4
    const-string v2, "textAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_159

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    const-string v2, "htmlString"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setText(Ljava/lang/String;)V

    const-string v2, "htmlString"

    const-string v3, "skipoverlaybutton"

    invoke-direct {p0, v0, v2, v3}, Lcom/adsdk/sdk/RequestBannerAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SkipOverlay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_11e

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setSkipOverlay(I)V

    :cond_11e
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setClickUrl(Ljava/lang/String;)V

    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setRefresh(I)V

    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setScale(Z)V

    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipPreflight(Z)V
    :try_end_14f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_82 .. :try_end_14f} :catch_53
    .catch Lorg/xml/sax/SAXException; {:try_start_82 .. :try_end_14f} :catch_79
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_14f} :catch_150
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_14f} :catch_1ca

    goto :goto_e3

    :catch_150
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot read Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_159
    :try_start_159
    const-string v2, "mraidAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    const-string v2, "htmlString"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setText(Ljava/lang/String;)V

    const-string v2, "htmlString"

    const-string v3, "skipoverlaybutton"

    invoke-direct {p0, v0, v2, v3}, Lcom/adsdk/sdk/RequestBannerAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SkipOverlay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_193

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setSkipOverlay(I)V

    :cond_193
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setClickUrl(Ljava/lang/String;)V

    const-string v2, "urltype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setUrlType(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setRefresh(I)V

    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/BannerAd;->setScale(Z)V

    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipPreflight(Z)V
    :try_end_1c8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_159 .. :try_end_1c8} :catch_53
    .catch Lorg/xml/sax/SAXException; {:try_start_159 .. :try_end_1c8} :catch_79
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_1c8} :catch_150
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_1c8} :catch_1ca

    goto/16 :goto_e3

    :catch_1ca
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot read Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1d3
    :try_start_1d3
    const-string v0, "noAd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    goto/16 :goto_e3

    :cond_1e1
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown response type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d3 .. :try_end_1f6} :catch_53
    .catch Lorg/xml/sax/SAXException; {:try_start_1d3 .. :try_end_1f6} :catch_79
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1f6} :catch_150
    .catch Ljava/lang/Throwable; {:try_start_1d3 .. :try_end_1f6} :catch_1ca
.end method

.method bridge synthetic parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/RequestBannerAd;->parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method parseTestString()Lcom/adsdk/sdk/BannerAd;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/RequestBannerAd;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/RequestBannerAd;->parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic parseTestString()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestBannerAd;->parseTestString()Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    return-object v0
.end method
