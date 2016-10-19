.class Lau/com/stklab/minepro/RandomView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/RandomView;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/RandomView;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/RandomView$1;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    sget-object v0, Lau/com/stklab/minepro/RandomView;->thisAct:Landroid/app/Activity;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lau/com/stklab/minepro/Global;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    sget-object v1, Lau/com/stklab/minepro/RandomView;->coverPicture:Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f020002

    const/high16 v4, 0x7f020000

    invoke-static {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_4
.end method
