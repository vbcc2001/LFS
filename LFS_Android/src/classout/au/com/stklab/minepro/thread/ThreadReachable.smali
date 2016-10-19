.class public Lau/com/stklab/minepro/thread/ThreadReachable;
.super Ljava/lang/Thread;


# instance fields
.field private channel:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lau/com/stklab/minepro/thread/ThreadReachable;->channel:I

    iput p1, p0, Lau/com/stklab/minepro/thread/ThreadReachable;->channel:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
