.class public Lau/com/stklab/minepro/Preview;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# static fields
.field public static catchLink:Ljava/lang/String;

.field public static coverPicture:Ljava/lang/String;

.field public static currentCategoryPage:I

.field public static fuckMotherA:Ljava/lang/String;

.field public static fuckMotherB:Ljava/lang/String;

.field public static fuckMotherC:Ljava/lang/String;

.field public static imgViewArray:Ljava/util/ArrayList;

.field public static mp4Link:Ljava/lang/String;

.field public static previewImgLinkArray:Ljava/util/ArrayList;

.field public static videoId:Ljava/lang/String;

.field public static videoList:Ljava/util/ArrayList;


# instance fields
.field public bitMapArray:Ljava/util/ArrayList;

.field calcPreviewPicHandler:Landroid/os/Handler;

.field private mAdView:Lcom/adsdk/sdk/banner/AdView;

.field private mManager:Lcom/adsdk/sdk/AdManager;

.field private pd:Landroid/app/ProgressDialog;

.field private previewPicNumber:I

.field private t_calcPreviewPic:Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;

.field private t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

.field private thisAct:Landroid/app/Activity;

.field updatePreviewImageViewHanlder:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lau/com/stklab/minepro/Preview;->fuckMotherA:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/Preview;->fuckMotherB:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/Preview;->fuckMotherC:Ljava/lang/String;

    const-string v0, "http://www.sexdelux.com/watch?v=cxLG201wtE74TbMda&uuad=2738691f"

    sput-object v0, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lau/com/stklab/minepro/Preview;->thisAct:Landroid/app/Activity;

    new-instance v0, Lau/com/stklab/minepro/Preview$1;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/Preview$1;-><init>(Lau/com/stklab/minepro/Preview;)V

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->updatePreviewImageViewHanlder:Landroid/os/Handler;

    new-instance v0, Lau/com/stklab/minepro/Preview$2;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/Preview$2;-><init>(Lau/com/stklab/minepro/Preview;)V

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->calcPreviewPicHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lau/com/stklab/minepro/Preview;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lau/com/stklab/minepro/Preview;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->thisAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lau/com/stklab/minepro/Preview;Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/Preview;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

    return-void
.end method

.method static synthetic access$3(Lau/com/stklab/minepro/Preview;)Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;
    .registers 2

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

    return-object v0
.end method


# virtual methods
.method public adClicked()V
    .registers 1

    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .registers 3

    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .registers 3

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    :cond_11
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .registers 3

    return-void
.end method

.method public init()V
    .registers 8

    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/Preview;->videoList:Ljava/util/ArrayList;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/Preview;->previewPicNumber:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    iget-object v0, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/Preview;->mp4Link:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lau/com/stklab/minepro/Preview;->currentCategoryPage:I

    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f050019

    invoke-virtual {p0, v2}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f050016

    invoke-virtual {p0, v4}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sget-object v5, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v6, "English"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    const-string v5, "prev"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "next"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "return"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "online viewing"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "download"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_8e
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v5, Lau/com/stklab/minepro/Preview$3;

    invoke-direct {v5, p0, v1, v0}, Lau/com/stklab/minepro/Preview$3;-><init>(Lau/com/stklab/minepro/Preview;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lau/com/stklab/minepro/Preview$4;

    invoke-direct {v5, p0, v0, v1}, Lau/com/stklab/minepro/Preview$4;-><init>(Lau/com/stklab/minepro/Preview;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/Preview$5;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/Preview$5;-><init>(Lau/com/stklab/minepro/Preview;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/Preview$6;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/Preview$6;-><init>(Lau/com/stklab/minepro/Preview;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/Preview$7;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/Preview$7;-><init>(Lau/com/stklab/minepro/Preview;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_bb
    sget-object v5, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v6, "Korean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    const-string v5, "\uc774\uc804"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\ub2e4\uc74c"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\ub4a4\ub85c"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\ubcf4\uae30"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\ub2e4\uc6b4\ub85c\ub4dc"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8e

    :cond_df
    sget-object v5, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v6, "Germany"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    const-string v5, "vorherige"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "n\u00e4chste"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "zur\u00fcck"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "beobachten"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "download"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8e

    :cond_103
    sget-object v5, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v6, "ChineseTradition"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_128

    const-string v5, "\u524d"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u5f8c"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u8fd4\u56de"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u5728\u7dda\u89c0\u770b"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u4e0b\u8f09"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_128
    sget-object v5, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v6, "ChineseSimplied"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14d

    const-string v5, "\u524d"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u540e"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u8fd4\u56de"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u5728\u7ebf\u89c2\u770b"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_14d
    sget-object v5, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v6, "Japanese"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_172

    const-string v5, "\u524d"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u5f8c"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u623b\u308b"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u898b\u308b"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_172
    const-string v5, "prev"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "next"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "retrun"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "online viewling"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "download"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e
.end method

.method public loadMobfoxAds()V
    .registers 9

    const/4 v4, 0x1

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/adsdk/sdk/AdManager;

    const-string v1, "http://my.mobfox.com/vrequest.php"

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    const-string v7, "18a3a448"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v7, "77dfbde4c1abd26ad91"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    const-string v7, "440e6"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->mManager:Lcom/adsdk/sdk/AdManager;

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/AdManager;->setListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    :cond_54
    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    const-string v2, "http://my.mobfox.com/request.php"

    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    const-string v7, "18a3a448"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v7, "77dfbde4c1abd26ad91"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    const-string v7, "440e6"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public noAdFound()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const v2, 0x7f05001a

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->setContentView(I)V

    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lau/com/stklab/minepro/Preview;->previewPicNumber:I

    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "coverPicture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/Preview;->coverPicture:Ljava/lang/String;

    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    if-nez v0, :cond_46

    :goto_45
    return-void

    :cond_46
    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->loadMobfoxAds()V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_thisav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-virtual {p0, v2}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/Preview;->previewPicNumber:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_1db

    :goto_be
    invoke-virtual {p0}, Lau/com/stklab/minepro/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020002

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v2, v1, -0x5a

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    int-to-double v7, v2

    mul-double/2addr v5, v7

    double-to-int v2, v5

    mul-int/lit8 v5, v2, 0x3

    if-le v5, v0, :cond_e2

    div-int/lit8 v0, v0, 0x3

    move v2, v0

    :cond_e2
    :goto_e2
    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v3, v0, :cond_126

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;

    iget v1, p0, Lau/com/stklab/minepro/Preview;->previewPicNumber:I

    iget-object v2, p0, Lau/com/stklab/minepro/Preview;->calcPreviewPicHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;-><init>(ILandroid/os/Handler;)V

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->t_calcPreviewPic:Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->t_calcPreviewPic:Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->start()V

    :try_start_fc
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    const-string v0, "Calculating.."

    const-string v1, "Calculating the preview images"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_112} :catch_114

    goto/16 :goto_45

    :catch_114
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_45

    :cond_11a
    invoke-virtual {p0, v2}, Lau/com/stklab/minepro/Preview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6b

    :cond_126
    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    add-int/lit8 v5, v1, -0x5a

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e2

    :cond_155
    :try_start_155
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    const-string v0, "\uacc4\uc0b0\uc911.."

    const-string v1, "\ubbf8\ub9ac\ubcf4\uae30 \uc774\ubbf8\uc9c0\ub97c \uacc4\uc0b0\uc911.."

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_45

    :cond_16d
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    const-string v0, "Die Berechnung.."

    const-string v1, "Die Berechnung der Vorschau-Bilder"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_45

    :cond_185
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    const-string v0, "\u8a08\u7b97.."

    const-string v1, "\u9810\u89bd\u5716\u50cf\u7684\u8a08\u7b97"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_45

    :cond_19d
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    const-string v0, "\u8ba1\u7b97.."

    const-string v1, "\u9884\u89c8\u56fe\u50cf\u7684\u8ba1\u7b97"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_45

    :cond_1b5
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    const-string v0, "\u8a08\u7b97.."

    const-string v1, "\u30d7\u30ec\u30d3\u30e5\u30fc\u753b\u50cf\u3092\u8a08\u7b97\u3059\u308b"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_45

    :cond_1cd
    const-string v0, "Calculating.."

    const-string v1, "Calculating preview images"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lau/com/stklab/minepro/Preview;->pd:Landroid/app/ProgressDialog;
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1d9} :catch_114

    goto/16 :goto_45

    :cond_1db
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_be
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->release()V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lau/com/stklab/minepro/Preview;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->release()V

    :cond_11
    return-void
.end method
