.class public Lau/com/stklab/minepro/parser/WebParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3GPLinkByTube8MobileVideoId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v4, -0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getTube8ContentByDetailPageLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://cdn1.mobile.tube8.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_4

    const-string v3, "\""

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static getIdFromSpankWireCoverPictureUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "[\\D]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-gez v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1d

    aget-object v0, v1, v0

    goto :goto_10

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public static getMP4LinkByMadthumbsId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.madthumbs.com/videos/blowjob/brunette/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://mobile.madthumbscdn.com/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_31

    const-string v2, "\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public static getMP4LinkByPornHubId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobilePornHubWebContentByVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "http://[^\"]*\\.mp4[^\"]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getMP4LinkBySextubeId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://sextube-iphone.com/versioncheck_5.php?challenge="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://video.sexvx.com/link/video/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4?st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_30

    move-result-object v0

    :cond_2f
    :goto_2f
    return-object v0

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public static getMP4LinkBySpankWireMobileVideoId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSpankWireWebContentByVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkFromSpankWireMobileWebContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMP4LinkByVidzMobileVideoId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getVidzContentById(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://phone.vidz.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_19

    const-string v0, ".mp4"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_19
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-result-object v0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static getMP4LinkFromSpankWireMobileWebContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, -0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v1, "<div class=\"thumb\" style=\"margin-top: 10px;\">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "href=\""

    const-string v3, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_31

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_31
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sorry , the parser can not parse the webContent, please check if the webcontent is valid"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static getVideoListFromMadThumbsMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "([0-9]+\\s.+\\s)+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1e

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error content from sextube madthumbs format invalid! Please check!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1d
    return-object v0

    :cond_1e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Script format pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error, data cannot divide by 2!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_45

    move-object v0, v1

    goto :goto_1d

    :cond_45
    new-instance v4, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v4}, Lau/com/stklab/minepro/type/Video;-><init>()V

    mul-int/lit8 v5, v0, 0x2

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public static getVideoListFromMadthumbsSearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "<div class=\"thumb_container\">.*?id=\"vid_([^\"]*)\".*?src=\"([^\"]*)\".*?title=\"([^\"]*)\""

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_18

    return-object v0

    :cond_18
    new-instance v2, Lau/com/stklab/minepro/type/SearchResult;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lau/com/stklab/minepro/type/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_11

    new-instance v3, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v3}, Lau/com/stklab/minepro/type/Video;-><init>()V

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    iget-object v2, v2, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v2, v3, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static getVideoListFromPornHubMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    const-string v1, "\" class=\"link_block\">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_53

    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/vkey/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_53

    const-string v4, ") no-repeat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_4d

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_4d

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    const-string v6, "http://cdn1."

    const-string v7, "http://cdn2."

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_53
    if-ne v1, v8, :cond_7

    return-object v0
.end method

.method public static getVideoListFromPornhubSearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "class=\"videoblock.*?href=\"[^\"]*?viewkey=([^\"]*)\".*?title=\"([^\"]*)\".*?\"([^\"]*jpg)\""

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_18

    return-object v0

    :cond_18
    new-instance v2, Lau/com/stklab/minepro/type/SearchResult;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lau/com/stklab/minepro/type/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_11

    new-instance v3, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v3}, Lau/com/stklab/minepro/type/Video;-><init>()V

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    iget-object v2, v2, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v2, v3, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static getVideoListFromSextubePornhubMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "([0-9]+\\s.+\\s.+\\s)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error content from sextube spankwire format invalid! Please check!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :cond_1e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Script format pass"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_31
    div-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_39

    move-object v0, v1

    goto :goto_1d

    :cond_39
    new-instance v4, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v4}, Lau/com/stklab/minepro/type/Video;-><init>()V

    mul-int/lit8 v5, v0, 0x3

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method public static getVideoListFromSextubeSpankWireMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "([0-9]+\\s.+\\s)+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1e

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error content from sextube spankwire format invalid! Please check!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1d
    return-object v0

    :cond_1e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Script format pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error, data cannot divide by 2!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_45

    move-object v0, v1

    goto :goto_1d

    :cond_45
    new-instance v4, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v4}, Lau/com/stklab/minepro/type/Video;-><init>()V

    mul-int/lit8 v5, v0, 0x2

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public static getVideoListFromSextubeThisavMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "([0-9]+\\s.+\\s.+\\s)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error content from sextube spankwire format invalid! Please check!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :cond_1e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Script format pass"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_31
    div-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_39

    move-object v0, v1

    goto :goto_1d

    :cond_39
    new-instance v4, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v4}, Lau/com/stklab/minepro/type/Video;-><init>()V

    mul-int/lit8 v5, v0, 0x3

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-object v5, v2, v5

    const-string v6, "&lt;"

    const-string v7, "<"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&iexcl;"

    const-string v7, "\u00a1"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&cent;"

    const-string v7, "\u00a2"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&pound;"

    const-string v7, "\u00a3"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&curren;"

    const-string v7, "\u00a4"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&yen;"

    const-string v7, "\u00a5"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&brevbar;"

    const-string v7, "\u00a6"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&sect;"

    const-string v7, "\u00a7"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&uml;"

    const-string v7, "\u00a8"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&copy;"

    const-string v7, "\u00a9"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&ordf;"

    const-string v7, "\u00aa"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&laquo;"

    const-string v7, "\u00ab"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&not;"

    const-string v7, "\u00ac"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&reg;"

    const-string v7, "\u00ae"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&macr;"

    const-string v7, "\u00af"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&deg;"

    const-string v7, "\u00b0"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&plusmn;"

    const-string v7, "\u00b1"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&sup2;"

    const-string v7, "\u00b2"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&sup3;"

    const-string v7, "\u00b3"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Ograve;"

    const-string v7, "\u00d2"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Oacute;"

    const-string v7, "\u00d3"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Ocirc;"

    const-string v7, "\u00d4"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Otilde;"

    const-string v7, "\u00d5"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Ouml;"

    const-string v7, "\u00d6"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&times;"

    const-string v7, "\u00d7"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Oslash;"

    const-string v7, "\u00d8"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Ugrave;"

    const-string v7, "\u00d9"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Uacute;"

    const-string v7, "\u00da"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, "&Ucirc;"

    const-string v7, "\u00db"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_31
.end method

.method public static getVideoListFromSextubeTube8MobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "([0-9]+\\s.+\\s.+\\s)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error content from sextube spankwire format invalid! Please check!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :cond_1e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Script format pass"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_31
    div-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_39

    move-object v0, v1

    goto :goto_1d

    :cond_39
    new-instance v4, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v4}, Lau/com/stklab/minepro/type/Video;-><init>()V

    mul-int/lit8 v5, v0, 0x3

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-object v5, v2, v5

    iput-object v5, v4, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method public static getVideoListFromSpankWireMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8

    const/4 v6, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    const-string v1, "<img src=\"http://cdn1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "<img src=\"http://pad"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_16

    if-eq v1, v6, :cond_1a

    :cond_16
    if-eq v2, v6, :cond_44

    if-le v1, v2, :cond_44

    :cond_1a
    const-string v3, "<img src=\"http://pad"

    const-string v4, "\" alt=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_44

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    iget-object v3, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-static {v3}, Lau/com/stklab/minepro/parser/WebParser;->getIdFromSpankWireCoverPictureUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_44
    if-eq v1, v6, :cond_48

    if-eq v2, v6, :cond_4c

    :cond_48
    if-eq v1, v6, :cond_76

    if-le v2, v1, :cond_76

    :cond_4c
    const-string v3, "<img src=\"http://cdn1"

    const-string v4, "\" alt=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_76

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    iget-object v3, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-static {v3}, Lau/com/stklab/minepro/parser/WebParser;->getIdFromSpankWireCoverPictureUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_76
    if-ne v1, v6, :cond_6

    if-ne v2, v6, :cond_6

    return-object v0
.end method

.method public static getVideoListFromSpankWireSearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "thumb-info-wrapper\"[ ]*>.*?<img id=\".*?([0-9]+).*?\".*?src=\"([^\"]*)\".*?<div class=\"title-video\">.*?<a .*?>(.*?)</a>"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_18

    return-object v0

    :cond_18
    new-instance v2, Lau/com/stklab/minepro/type/SearchResult;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lau/com/stklab/minepro/type/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_11

    new-instance v3, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v3}, Lau/com/stklab/minepro/type/Video;-><init>()V

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    iget-object v2, v2, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v2, v3, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static getVideoListFromTube8MobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10

    const/4 v1, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :cond_7
    const-string v2, "http://cdn1.image.tube8.phncdn.com/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v2, "http://cdn2.image.tube8.phncdn.com/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v1, :cond_1a

    if-eq v2, v1, :cond_1a

    if-ge v3, v2, :cond_1a

    move v0, v3

    :cond_1a
    if-eq v3, v1, :cond_21

    if-eq v2, v1, :cond_21

    if-ge v2, v3, :cond_21

    move v0, v2

    :cond_21
    if-eq v3, v1, :cond_26

    if-ne v2, v1, :cond_26

    move v0, v3

    :cond_26
    if-eq v2, v1, :cond_2b

    if-ne v3, v1, :cond_2b

    move v0, v2

    :cond_2b
    if-ne v3, v1, :cond_30

    if-ne v2, v1, :cond_30

    move v0, v1

    :cond_30
    if-eq v0, v1, :cond_8d

    const-string v2, ".jpg"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    new-instance v3, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v3}, Lau/com/stklab/minepro/type/Video;-><init>()V

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "<a href=\"/video/show/title/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_90

    add-int/lit8 v6, v2, 0x9

    const-string v2, "\""

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://m.tube8.com"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    const-string v7, "/id/"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "\""

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v7, v1, :cond_86

    if-eq v6, v1, :cond_86

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    :cond_86
    :goto_86
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_8d
    if-ne v0, v1, :cond_7

    return-object v4

    :cond_90
    move v2, v1

    goto :goto_86
.end method

.method public static getVideoListFromTube8SearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12

    const/4 v10, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "<a href=\"([^\"]*?/([^\"/]*)/[0-9]+/)\".*?<img .*? id=\"[^0-9\"]*([^\"]*)\" .*?src=\"([^\"]*)\".*?title=\"([^\"]*)\".*?([0-9]+:[0-9]+)"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_19

    return-object v0

    :cond_19
    new-instance v2, Lau/com/stklab/minepro/type/SearchResult;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://m.tube8.com/video/show/title/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/id/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lau/com/stklab/minepro/type/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_12

    new-instance v3, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v3}, Lau/com/stklab/minepro/type/Video;-><init>()V

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->detailPageLink:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    iget-object v4, v2, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    iget-object v2, v2, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v2, v3, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public static getVideoListFromVidzMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    const/4 v5, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    const-string v0, "<a href=\"/video?s="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_42

    add-int/lit8 v0, v0, 0x12

    const-string v2, "\""

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v3}, Lau/com/stklab/minepro/type/Video;-><init>()V

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "http://image.vidz.com/thumbs/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_42

    const-string v4, ".jpg"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    if-ne v0, v5, :cond_6

    return-object v1
.end method
