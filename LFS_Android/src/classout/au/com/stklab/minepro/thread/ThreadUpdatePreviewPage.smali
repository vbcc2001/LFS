.class public Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;
.super Ljava/lang/Thread;


# static fields
.field public static referLink:Ljava/lang/String;

.field static videoId:I


# instance fields
.field bitMapArray:Ljava/util/ArrayList;

.field context:Landroid/content/Context;

.field coverPicture:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field page:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http://www.sexdelux.com/watch?v=588937Jwnlcas"

    sput-object v0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->referLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->coverPicture:Ljava/lang/String;

    iput p2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->page:I

    iput-object p4, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->context:Landroid/content/Context;

    iput-object p5, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->bitMapArray:Ljava/util/ArrayList;

    if-eqz p6, :cond_15

    :try_start_f
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->videoId:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static genAllPreviewImgByCoverPicture(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9

    const/16 v7, 0xa

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "spankwire"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "search_spankwire"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "sextube_spankwire"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    :cond_2a
    const-string v3, "http://[^ ]+/[0-9]+\\.jpg"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_72

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_54

    if-le v3, v2, :cond_54

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_54

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_52
    if-le v2, v7, :cond_55

    :cond_54
    return-object v0

    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_72
    move v2, v1

    :goto_73
    const/16 v3, 0x9

    if-gt v2, v3, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_b2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    :cond_b2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_af

    :cond_d7
    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "madthumbs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_eb

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "search_madthumbs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    :cond_eb
    const-string v2, "^http://.*-[0-9]+\\.jpg"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_128

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_107
    const/16 v3, 0x31

    if-gt v1, v3, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    :cond_128
    const-string v2, "^http://.*0[0-9]_156x117\\.jpg"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_142
    const/4 v3, 0x4

    if-gt v1, v3, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_156x117.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_142

    :cond_162
    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "tube8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_180

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "sextube_tube8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_180

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "search_tube8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    :cond_180
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_54

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19f
    if-gt v2, v6, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19f

    :cond_1be
    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "vidz"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_208

    const-string v2, "thumbs_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_54

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "thumbs_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e7
    const/16 v3, 0x28

    if-gt v1, v3, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e7

    :cond_208
    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "pornhub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_226

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "sextube_pornhub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_226

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v4, "search_pornhub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c7

    :cond_226
    const-string v3, "(http://.*/[0-9]+\\.jpg)\\?cache=.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_23a

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_23a
    const-string v3, "small.jpg"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_278

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "small"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_259
    if-gt v2, v6, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_259

    :cond_278
    const-string v1, "http://.*/[0-9]+\\.jpg"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "(http://.*/)[0-9]+\\.jpg"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v2, :cond_54

    move v1, v2

    :goto_29f
    if-gt v1, v6, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29f

    :cond_2c7
    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "sextube_thisav"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "http://.*-[0-9]+\\.jpg"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "(http://.*-)[0-9]+\\.jpg"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v2, :cond_54

    move v1, v2

    :goto_2f8
    if-gt v1, v7, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f8
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x3

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->coverPicture:Ljava/lang/String;

    invoke-static {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->genAllPreviewImgByCoverPicture(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/Preview;->previewImgLinkArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_a
    if-le v0, v3, :cond_d

    return-void

    :cond_d
    if-gt v0, v3, :cond_1e

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->page:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    sget-object v2, Lau/com/stklab/minepro/Preview;->previewImgLinkArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2b

    :cond_1e
    iget-object v1, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->handler:Landroid/os/Handler;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->page:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2b
    iget-object v1, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->handler:Landroid/os/Handler;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->page:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method
