.class public Lau/com/stklab/minepro/thread/ThreadStatVideo;
.super Ljava/lang/Thread;


# instance fields
.field cover_pic:Ljava/lang/String;

.field gp_link:Ljava/lang/String;

.field img_link_array:Ljava/util/ArrayList;

.field mp4_link:Ljava/lang/String;

.field vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/thread/ThreadStatVideo;->vid:Ljava/lang/String;

    iput-object p2, p0, Lau/com/stklab/minepro/thread/ThreadStatVideo;->cover_pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
