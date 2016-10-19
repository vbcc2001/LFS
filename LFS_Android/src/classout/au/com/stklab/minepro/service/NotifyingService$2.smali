.class Lau/com/stklab/minepro/service/NotifyingService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingService;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingService;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const-wide/16 v11, 0x3e8

    const v10, 0x1080081

    const-wide/high16 v8, 0x4024000000000000L

    const-wide/16 v6, 0x1f4

    :cond_9
    sget-wide v0, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    const v1, 0x108007d

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    iget-object v2, v2, Lau/com/stklab/minepro/service/NotifyingService;->text_starting:Ljava/lang/String;

    # invokes: Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lau/com/stklab/minepro/service/NotifyingService;->access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    # getter for: Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lau/com/stklab/minepro/service/NotifyingService;->access$1(Lau/com/stklab/minepro/service/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    mul-long/2addr v2, v11

    sget-wide v4, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    div-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V
    invoke-static {v0, v10, v1}, Lau/com/stklab/minepro/service/NotifyingService;->access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    # getter for: Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lau/com/stklab/minepro/service/NotifyingService;->access$1(Lau/com/stklab/minepro/service/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    mul-long/2addr v2, v11

    sget-wide v4, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    div-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V
    invoke-static {v0, v10, v1}, Lau/com/stklab/minepro/service/NotifyingService;->access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    # getter for: Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lau/com/stklab/minepro/service/NotifyingService;->access$1(Lau/com/stklab/minepro/service/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    mul-long/2addr v2, v11

    sget-wide v4, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    div-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V
    invoke-static {v0, v10, v1}, Lau/com/stklab/minepro/service/NotifyingService;->access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$2;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    # getter for: Lau/com/stklab/minepro/service/NotifyingService;->mCondition:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lau/com/stklab/minepro/service/NotifyingService;->access$1(Lau/com/stklab/minepro/service/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_29
.end method
