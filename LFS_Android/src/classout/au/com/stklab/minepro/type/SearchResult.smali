.class public Lau/com/stklab/minepro/type/SearchResult;
.super Ljava/lang/Object;


# instance fields
.field public detailPageLink:Ljava/lang/String;

.field public imageLink:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object p2, p0, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object p3, p0, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/type/SearchResult;->detailPageLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object p2, p0, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object p3, p0, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object p4, p0, Lau/com/stklab/minepro/type/SearchResult;->detailPageLink:Ljava/lang/String;

    return-void
.end method
