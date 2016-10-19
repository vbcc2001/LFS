.class Lau/com/stklab/minepro/RandomView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/RandomView;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/RandomView;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/RandomView$2;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    const-wide v7, 0x3fe6666666666666L

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$2;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_63

    :goto_1d
    add-int/lit8 v2, v0, -0x5a

    sget-object v0, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v3, v0

    sget-object v0, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    int-to-double v5, v2

    mul-double/2addr v3, v5

    double-to-int v0, v3

    int-to-double v3, v0

    int-to-double v5, v1

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3b

    int-to-double v0, v1

    mul-double/2addr v0, v7

    double-to-int v0, v0

    :cond_3b
    sget-object v1, Lau/com/stklab/minepro/RandomView;->thisAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020002

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    sget-object v0, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;

    iget-object v1, p0, Lau/com/stklab/minepro/RandomView$2;->this$0:Lau/com/stklab/minepro/RandomView;

    iget-object v1, v1, Lau/com/stklab/minepro/RandomView;->updateImageViewHanlder:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;->start()V

    return-void

    :cond_63
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1d
.end method
