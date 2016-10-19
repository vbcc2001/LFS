.class Lau/com/stklab/minepro/mineBeta$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/mineBeta;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$2;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x1

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_8c

    sget v0, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    if-ne v0, v2, :cond_48

    # getter for: Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$1()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no result for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lau/com/stklab/minepro/mineBeta$2$1;

    invoke-direct {v3, p0}, Lau/com/stklab/minepro/mineBeta$2$1;-><init>(Lau/com/stklab/minepro/mineBeta$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7

    :cond_48
    # getter for: Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$1()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no more result for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lau/com/stklab/minepro/mineBeta$2$2;

    invoke-direct {v3, p0}, Lau/com/stklab/minepro/mineBeta$2$2;-><init>(Lau/com/stklab/minepro/mineBeta$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :cond_8c
    :try_start_8c
    # getter for: Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$1()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lau/com/stklab/minepro/Global;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    iget-object v3, v0, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020002

    const/high16 v4, 0x7f020000

    invoke-static {v0, v1, v4}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_bd} :catch_c2

    :goto_bd
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_7

    :catch_c2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bd
.end method
