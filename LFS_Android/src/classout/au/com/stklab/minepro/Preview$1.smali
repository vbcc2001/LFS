.class Lau/com/stklab/minepro/Preview$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Preview;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Preview;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/Preview$1;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v1, p1, Landroid/os/Message;->what:I

    :try_start_2
    sget-object v2, Lau/com/stklab/minepro/Global;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    sget-object v0, Lau/com/stklab/minepro/Preview;->previewImgLinkArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    rem-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020002

    const/high16 v4, 0x7f020000

    invoke-static {v1, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_26

    :goto_22
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method
