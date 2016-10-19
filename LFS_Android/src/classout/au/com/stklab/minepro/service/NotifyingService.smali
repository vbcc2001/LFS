.class public Lau/com/stklab/minepro/service/NotifyingService;
.super Landroid/app/Service;


# static fields
.field private static MOOD_NOTIFICATIONS:I

.field public static downloadedSize:J

.field public static isRunning:Z

.field public static thisSer:Landroid/app/Service;

.field public static totalSize:J


# instance fields
.field downloadThread:Ljava/lang/Thread;

.field private isStop:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCondition:Landroid/os/ConditionVariable;

.field private mNM:Landroid/app/NotificationManager;

.field private mTask:Ljava/lang/Runnable;

.field notifyingThread:Ljava/lang/Thread;

.field private sTask:Ljava/lang/Runnable;

.field text_downloading:Ljava/lang/String;

.field text_finished:Ljava/lang/String;

.field text_starting:Ljava/lang/String;

.field text_terminated:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f03000c

    sput v0, Lau/com/stklab/minepro/service/NotifyingService;->MOOD_NOTIFICATIONS:I

    const/4 v0, 0x0

    sput-boolean v0, Lau/com/stklab/minepro/service/NotifyingService;->isRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->isStop:Z

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingService$1;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingService$1;-><init>(Lau/com/stklab/minepro/service/NotifyingService;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingService$2;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingService$2;-><init>(Lau/com/stklab/minepro/service/NotifyingService;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->sTask:Ljava/lang/Runnable;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingService$3;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingService$3;-><init>(Lau/com/stklab/minepro/service/NotifyingService;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lau/com/stklab/minepro/service/NotifyingService;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$2(Lau/com/stklab/minepro/service/NotifyingService;)Z
    .registers 2

    iget-boolean v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->isStop:Z

    return v0
.end method

.method private showNotification(ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lau/com/stklab/minepro/service/NotifyingController;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingService;->mNM:Landroid/app/NotificationManager;

    sget v2, Lau/com/stklab/minepro/service/NotifyingService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mNM:Landroid/app/NotificationManager;

    sput-object p0, Lau/com/stklab/minepro/service/NotifyingService;->thisSer:Landroid/app/Service;

    const/4 v0, 0x1

    sput-boolean v0, Lau/com/stklab/minepro/service/NotifyingService;->isRunning:Z

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "\uc11c\ubc84\uc5d0 \uc5f0\uacb0...."

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, "\uc885\ub8cc"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, "\ub2e4\uc6b4\ub85c\ub4dc"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, "\uc644\uc131\ub41c \uc5ec\uae30\ub97c \uc5f4\ub824\uba74 \ud074\ub9ad\ud558\uc2ed\uc2dc\uc624"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    :goto_34
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingService;->mTask:Ljava/lang/Runnable;

    const-string v2, "DownloadingService"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->downloadThread:Ljava/lang/Thread;

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingService;->sTask:Ljava/lang/Runnable;

    const-string v2, "NotifyingService"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->notifyingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->notifyingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_5d
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "Verbindung zum Server...."

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, "beendet"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, "Downloading"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, "fertigen, hier zu \u00f6ffnen, klicken Sie auf"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    goto :goto_34

    :cond_78
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "\u9023\u63a5\u5230\u670d\u52d9\u5668...."

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, "\u7d42\u6b62"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f09"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, "\u5b8c\u6210\uff0c\u9ede\u64ca\u9019\u88e1\u6253\u958b"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    goto :goto_34

    :cond_93
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "\u8fde\u63a5\u5230\u670d\u52a1\u5668...."

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, "\u7ec8\u6b62"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, "\u5b8c\u6210\uff0c\u70b9\u51fb\u8fd9\u91cc\u6253\u5f00"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    goto :goto_34

    :cond_ae
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string v0, "\u30b5\u30fc\u30d0\u30fc\u3078\u306e\u63a5\u7d9a"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, "\u7d42\u4e86\u3059\u308b"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, "\u5b8c\u6210\u3057\u305f\u3001\u3053\u3053\u3067\u30af\u30ea\u30c3\u30af\u3057\u3066\u958b\u304d\u307e\u3059"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    goto/16 :goto_34

    :cond_ca
    const-string v0, "connecting to server...."

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    const-string v0, "terminated"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    const-string v0, "Downloading"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_downloading:Ljava/lang/String;

    const-string v0, "finished, click here to open"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    goto/16 :goto_34
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mNM:Landroid/app/NotificationManager;

    sget v1, Lau/com/stklab/minepro/service/NotifyingService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/com/stklab/minepro/service/NotifyingService;->isStop:Z

    const/4 v0, 0x0

    sput-boolean v0, Lau/com/stklab/minepro/service/NotifyingService;->isRunning:Z

    invoke-virtual {p0}, Lau/com/stklab/minepro/service/NotifyingService;->stopSelf()V

    return-void
.end method
