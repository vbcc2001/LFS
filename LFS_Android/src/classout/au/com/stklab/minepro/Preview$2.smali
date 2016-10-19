.class Lau/com/stklab/minepro/Preview$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Preview;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Preview;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    # getter for: Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lau/com/stklab/minepro/Preview;->access$0(Lau/com/stklab/minepro/Preview;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-virtual {v0}, Lau/com/stklab/minepro/Preview;->init()V

    iget-object v7, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

    sget-object v1, Lau/com/stklab/minepro/Preview;->coverPicture:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/Preview;->currentCategoryPage:I

    iget-object v3, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    # getter for: Lau/com/stklab/minepro/Preview;->thisAct:Landroid/app/Activity;
    invoke-static {v3}, Lau/com/stklab/minepro/Preview;->access$1(Lau/com/stklab/minepro/Preview;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    iget-object v4, v4, Lau/com/stklab/minepro/Preview;->updatePreviewImageViewHanlder:Landroid/os/Handler;

    iget-object v5, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    iget-object v5, v5, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    sget-object v6, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lau/com/stklab/minepro/Preview;->access$2(Lau/com/stklab/minepro/Preview;Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;)V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview$2;->this$0:Lau/com/stklab/minepro/Preview;

    # getter for: Lau/com/stklab/minepro/Preview;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;
    invoke-static {v0}, Lau/com/stklab/minepro/Preview;->access$3(Lau/com/stklab/minepro/Preview;)Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->start()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3d

    :goto_39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method
