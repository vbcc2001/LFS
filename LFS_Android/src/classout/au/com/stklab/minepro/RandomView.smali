.class public Lau/com/stklab/minepro/RandomView;
.super Landroid/app/Activity;


# static fields
.field public static bitMap:Landroid/graphics/Bitmap;

.field public static bitMapArray:Ljava/util/ArrayList;

.field public static coverPicture:Ljava/lang/String;

.field public static detailPageLink:Ljava/lang/String;

.field public static imageView:Landroid/widget/ImageView;

.field public static thisAct:Landroid/app/Activity;

.field public static videoId:Ljava/lang/String;


# instance fields
.field public updateImageViewHanlder:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lau/com/stklab/minepro/RandomView;->thisAct:Landroid/app/Activity;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->bitMapArray:Ljava/util/ArrayList;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->coverPicture:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->videoId:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->detailPageLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lau/com/stklab/minepro/RandomView$1;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/RandomView$1;-><init>(Lau/com/stklab/minepro/RandomView;)V

    iput-object v0, p0, Lau/com/stklab/minepro/RandomView;->updateImageViewHanlder:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    const v12, 0x7f020002

    const-wide v10, 0x3fe6666666666666L

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/RandomView;->setContentView(I)V

    sput-object p0, Lau/com/stklab/minepro/RandomView;->thisAct:Landroid/app/Activity;

    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/RandomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lau/com/stklab/minepro/RandomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/RandomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lau/com/stklab/minepro/RandomView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f05001c

    invoke-virtual {p0, v2}, Lau/com/stklab/minepro/RandomView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget-object v3, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v4, "English"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14f

    sget-object v3, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v4, "Korean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    const-string v3, "\ub79c\ub364"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\ub4a4\ub85c"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\ubbf8\ub9ac\ubcf4\uae30"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_66
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/RandomView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_160

    :goto_7c
    add-int/lit8 v5, v3, -0x5a

    sget-object v3, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v6, v3

    sget-object v3, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v6, v8

    int-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-double v6, v3

    int-to-double v8, v4

    mul-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_9a

    int-to-double v3, v4

    mul-double/2addr v3, v10

    double-to-int v3, v3

    :cond_9a
    invoke-virtual {p0}, Lau/com/stklab/minepro/RandomView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    sget-object v4, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    sget-object v6, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v4, Lau/com/stklab/minepro/RandomView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v3, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;

    iget-object v4, p0, Lau/com/stklab/minepro/RandomView;->updateImageViewHanlder:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3}, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;->start()V

    new-instance v3, Lau/com/stklab/minepro/RandomView$2;

    invoke-direct {v3, p0}, Lau/com/stklab/minepro/RandomView$2;-><init>(Lau/com/stklab/minepro/RandomView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/RandomView$3;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/RandomView$3;-><init>(Lau/com/stklab/minepro/RandomView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/RandomView$4;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/RandomView$4;-><init>(Lau/com/stklab/minepro/RandomView;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_e3
    sget-object v3, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v4, "Germany"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    const-string v3, "zuf\u00e4llig"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "zur\u00fcck"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "Vorschau"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_66

    :cond_fe
    sget-object v3, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v4, "ChineseTradition"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    const-string v3, "\u96a8\u6a5f"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u8fd4\u56de"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u9810\u89bd"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_66

    :cond_119
    sget-object v3, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v4, "ChineseSimplied"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    const-string v3, "\u968f\u673a"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u8fd4\u56de"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u9884\u89c8"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_66

    :cond_134
    sget-object v3, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v4, "Japanese"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    const-string v3, "\u30e9\u30f3\u30c0\u30e0"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u623b\u308b"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u30d7\u30ec\u30d3\u30e5\u30fc"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_66

    :cond_14f
    const-string v3, "Random"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "Back"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "Preview"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_66

    :cond_160
    move v13, v4

    move v4, v3

    move v3, v13

    goto/16 :goto_7c
.end method
