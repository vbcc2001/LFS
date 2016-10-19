.class Lau/com/stklab/minepro/service/NotifyingService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingService;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingService;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lau/com/stklab/minepro/Preview;->mp4Link:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "check point 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/STK/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the path is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/STK/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the link is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lau/com/stklab/minepro/Preview;->mp4Link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "check point 2.1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "check point 2.2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "check point 2.3"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v3, v0

    sput-wide v3, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    const-wide/16 v3, 0x0

    sput-wide v3, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "check point 3"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_c6
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_d4

    iget-object v4, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    # getter for: Lau/com/stklab/minepro/service/NotifyingService;->isStop:Z
    invoke-static {v4}, Lau/com/stklab/minepro/service/NotifyingService;->access$2(Lau/com/stklab/minepro/service/NotifyingService;)Z

    move-result v4

    if-eqz v4, :cond_fa

    :cond_d4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "check point 5"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_de} :catch_10d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_de} :catch_112

    :goto_de
    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    # getter for: Lau/com/stklab/minepro/service/NotifyingService;->isStop:Z
    invoke-static {v0}, Lau/com/stklab/minepro/service/NotifyingService;->access$2(Lau/com/stklab/minepro/service/NotifyingService;)Z

    move-result v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    const v1, 0x108008a

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    iget-object v2, v2, Lau/com/stklab/minepro/service/NotifyingService;->text_terminated:Ljava/lang/String;

    # invokes: Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lau/com/stklab/minepro/service/NotifyingService;->access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    invoke-virtual {v0}, Lau/com/stklab/minepro/service/NotifyingService;->stopSelf()V

    :goto_f7
    sput-boolean v8, Lau/com/stklab/minepro/service/NotifyingService;->isRunning:Z

    return-void

    :cond_fa
    :try_start_fa
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "check point 4"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    sget-wide v4, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    int-to-long v6, v3

    add-long v3, v4, v6

    sput-wide v3, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J
    :try_end_10c
    .catch Ljava/net/MalformedURLException; {:try_start_fa .. :try_end_10c} :catch_10d
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_10c} :catch_112

    goto :goto_c6

    :catch_10d
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_de

    :catch_112
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_de

    :cond_117
    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    const v1, 0x1080082

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingService$3;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    iget-object v2, v2, Lau/com/stklab/minepro/service/NotifyingService;->text_finished:Ljava/lang/String;

    # invokes: Lau/com/stklab/minepro/service/NotifyingService;->showNotification(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lau/com/stklab/minepro/service/NotifyingService;->access$0(Lau/com/stklab/minepro/service/NotifyingService;ILjava/lang/String;)V

    goto :goto_f7
.end method
