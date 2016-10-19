.class public Lcom/adsdk/sdk/video/TrackerService;
.super Ljava/lang/Object;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sRetryTrackEvents:Ljava/util/Queue;

.field private static sStopped:Z

.field private static sThread:Ljava/lang/Thread;

.field private static sThreadRunning:Z

.field private static sTrackEvents:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .registers 1

    sput-boolean p0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    return-void
.end method

.method static synthetic access$1()Z
    .registers 1

    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    return v0
.end method

.method static synthetic access$2()Z
    .registers 1

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->hasMoreUpdates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Lcom/adsdk/sdk/video/TrackEvent;
    .registers 1

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Z)V
    .registers 1

    sput-boolean p0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    return-void
.end method

.method static synthetic access$8(Ljava/lang/Thread;)V
    .registers 1

    sput-object p0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    return-void
.end method

.method private static getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;
    .registers 2

    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/TrackEvent;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_18

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static hasMoreUpdates()Z
    .registers 4

    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "More updates:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_c

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static release()V
    .registers 1

    const-string v0, "release"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    const-string v0, "release stopping Tracking events thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    :cond_11
    return-void
.end method

.method public static requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V
    .registers 4

    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    iget v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1b

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added retry track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V
    .registers 4

    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_31

    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_30

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    :cond_30
    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestTrack([Lcom/adsdk/sdk/video/TrackEvent;)V
    .registers 6

    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    array-length v2, p0

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v2, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3a

    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_27

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    :cond_27
    return-void

    :cond_28
    :try_start_28
    aget-object v3, p0, v0

    sget-object v4, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    sget-object v4, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_3a

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startTracking()V
    .registers 3

    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/video/TrackerService$1;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/TrackerService$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/video/TrackerService$2;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/TrackerService$2;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method
