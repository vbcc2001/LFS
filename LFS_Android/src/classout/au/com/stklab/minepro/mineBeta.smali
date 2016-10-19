.class public Lau/com/stklab/minepro/mineBeta;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# static fields
.field private static final ABOUT_ID:I = 0x1

.field public static VERSION:Ljava/lang/String;

.field public static big_fucker:Ljava/lang/String;

.field public static bitMapArray:Ljava/util/ArrayList;

.field public static bmLoading:Landroid/graphics/Bitmap;

.field public static currentCategory:Ljava/lang/String;

.field public static currentCategoryPage:I

.field public static currentServer:Ljava/lang/String;

.field public static currentServerCode:Ljava/lang/String;

.field public static fuck_hack:Ljava/lang/String;

.field public static fuck_loser:Ljava/lang/String;

.field public static fuck_mm:Ljava/lang/String;

.field public static getVideoLinkP1:Ljava/lang/String;

.field public static getVideoLinkP2:Ljava/lang/String;

.field public static imageHeight:I

.field public static imageWidth:I

.field public static imgViewArray:Ljava/util/ArrayList;

.field public static inferLink:Ljava/lang/String;

.field private static pd:Landroid/app/ProgressDialog;

.field public static readyArray:Ljava/util/ArrayList;

.field public static screenHeight:I

.field public static screenWidth:I

.field public static script:Ljava/lang/String;

.field public static t_engine:Lau/com/stklab/minepro/executer/Engine;

.field private static t_statUpdate:Lau/com/stklab/minepro/thread/ThreadStatUpdate;

.field private static t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

.field private static t_updateVersion:Lau/com/stklab/minepro/thread/ThreadGetLink;

.field private static thisAct:Landroid/app/Activity;

.field public static videoList:Ljava/util/ArrayList;


# instance fields
.field private mAdView:Lcom/adsdk/sdk/banner/AdView;

.field private mManager:Lcom/adsdk/sdk/AdManager;

.field public showNetworkProblemHandler:Landroid/os/Handler;

.field public updateImageViewHanlder:Landroid/os/Handler;

.field public updateVersionHanlder:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v2, 0x78

    const/4 v1, 0x0

    const-string v0, "1.53"

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->VERSION:Ljava/lang/String;

    sput-object v3, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    sput v1, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    sput v1, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    sput-object v3, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    sput v2, Lau/com/stklab/minepro/mineBeta;->imageHeight:I

    sput v2, Lau/com/stklab/minepro/mineBeta;->imageWidth:I

    const-string v0, "http://www.sexdelux.com/watch?v=82sje6kXcp74TMda"

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lau/com/stklab/minepro/mineBeta$1;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/mineBeta$1;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    iput-object v0, p0, Lau/com/stklab/minepro/mineBeta;->updateVersionHanlder:Landroid/os/Handler;

    new-instance v0, Lau/com/stklab/minepro/mineBeta$2;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/mineBeta$2;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    iput-object v0, p0, Lau/com/stklab/minepro/mineBeta;->updateImageViewHanlder:Landroid/os/Handler;

    new-instance v0, Lau/com/stklab/minepro/mineBeta$3;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/mineBeta$3;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    iput-object v0, p0, Lau/com/stklab/minepro/mineBeta;->showNetworkProblemHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lau/com/stklab/minepro/thread/ThreadUpdatePage;)V
    .registers 1

    sput-object p0, Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    return-void
.end method

.method static synthetic access$3()Lau/com/stklab/minepro/thread/ThreadUpdatePage;
    .registers 1

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    return-object v0
.end method

.method public static search()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "Updating.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    sget v0, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    if-ne v0, v5, :cond_47

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const v2, 0x7f050017

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_47
    :goto_47
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_6c

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lau/com/stklab/minepro/Global;->mineBetaInstance:Lau/com/stklab/minepro/mineBeta;

    iget-object v4, v4, Lau/com/stklab/minepro/mineBeta;->updateImageViewHanlder:Landroid/os/Handler;

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->start()V

    return-void

    :cond_6c
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47
.end method

.method public static setFuckJumpTapA()V
    .registers 4

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherA:Ljava/lang/String;

    return-void
.end method

.method public static setFuckJumpTapB()V
    .registers 5

    const-string v0, ""

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x16

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x69

    const/16 v4, 0x6a

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x19

    const/16 v4, 0x1a

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x25

    const/16 v4, 0x26

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    return-void
.end method

.method public static setFuckJumpTapC()V
    .registers 5

    const-string v0, ""

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x50

    const/16 v4, 0x51

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x69

    const/16 v4, 0x6a

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x21

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x16

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    const/16 v3, 0x37

    const/16 v4, 0x38

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    return-void
.end method

.method public static switchChannel()V
    .registers 9

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    if-nez v0, :cond_10

    sget-object v0, Lau/com/stklab/minepro/Global;->selectChannelActivity:Lau/com/stklab/minepro/SelectChannel;

    iget-object v0, v0, Lau/com/stklab/minepro/SelectChannel;->startMainActivityHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v1, "Updating.."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Going to channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    sput v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v6

    :goto_3c
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_81

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lau/com/stklab/minepro/Global;->mineBetaInstance:Lau/com/stklab/minepro/mineBeta;

    iget-object v4, v4, Lau/com/stklab/minepro/mineBeta;->updateImageViewHanlder:Landroid/os/Handler;

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->start()V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    :cond_81
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    :cond_92
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_b4
    move v1, v6

    :goto_b5
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_f

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b5
.end method

.method public static switchPage()V
    .registers 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "English"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "Loading.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Going to page #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \nPress return to cancel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    :goto_2d
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const v2, 0x7f050017

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3b
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_163

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lau/com/stklab/minepro/Global;->mineBetaInstance:Lau/com/stklab/minepro/mineBeta;

    iget-object v4, v4, Lau/com/stklab/minepro/mineBeta;->updateImageViewHanlder:Landroid/os/Handler;

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->start()V

    return-void

    :cond_60
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Korean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "\ub85c\ub4dc\uc911.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\ud398\uc774\uc9c0\ub85c \uc774\ub3d9 #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n \ucde8\uc18c \ud654\uba74\uc73c\ub85c \ubcf5\uadc0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto :goto_2d

    :cond_8c
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Germany"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "Laden.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Going to Seite #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n Dr\u00fccken Sie die Eingabetaste um den Vorgang abzubrechen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_2d

    :cond_b9
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "ChineseTradition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "\u8f09\u5165\u4e2d.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53bb\u9801 #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n \u6309\u8fd4\u56de\u9375\u53d6\u6d88 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_2d

    :cond_e6
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "ChineseSimplied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "\u8f7d\u5165\u4e2d.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53bb\u9875 #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n \u6309\u8fd4\u56de\u952e\u53d6\u6d88 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_2d

    :cond_113
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Japanese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "\u8ca0\u8377.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u30da\u30fc\u30b8\u306b\u884c\u304f #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n \u30ad\u30e3\u30f3\u30bb\u30eb\u3059\u308b\u306b\u306f\u3001Return\u30ad\u30fc\u3092\u62bc\u3057 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_2d

    :cond_140
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    const-string v2, "Updating.."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Going to page #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \nPress return to cancel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_2d

    :cond_163
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3b
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

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    :cond_11
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .registers 3

    return-void
.end method

.method public gotoVideo(Lau/com/stklab/minepro/type/Video;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.youtube.com/watch?v=cxLG2wtE7TM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public init()V
    .registers 11

    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v5, 0x0

    sput-object p0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    sput-object p0, Lau/com/stklab/minepro/Global;->mineBetaInstance:Lau/com/stklab/minepro/mineBeta;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    sput v0, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the screen height is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the screen width is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    sget v1, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    if-ge v0, v1, :cond_50

    sget v0, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    sget v1, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    sput v1, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    sput v0, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    :cond_50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "http://sext"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    sget v1, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    add-int/lit8 v1, v1, -0x5a

    div-int/lit8 v1, v1, 0x2

    sput v1, Lau/com/stklab/minepro/mineBeta;->imageHeight:I

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    sget v3, Lau/com/stklab/minepro/mineBeta;->imageHeight:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lau/com/stklab/minepro/mineBeta;->imageWidth:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    if-le v1, v2, :cond_cb

    sget v1, Lau/com/stklab/minepro/mineBeta;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    sput v1, Lau/com/stklab/minepro/mineBeta;->imageWidth:I

    :cond_cb
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "caculated imagewidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lau/com/stklab/minepro/mineBeta;->imageWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image height is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lau/com/stklab/minepro/mineBeta;->imageHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    sget v2, Lau/com/stklab/minepro/mineBeta;->imageWidth:I

    sget v3, Lau/com/stklab/minepro/mineBeta;->imageHeight:I

    invoke-static {v1, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    const-string v1, "ube-andr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->getVideoLinkP1:Ljava/lang/String;

    sput v6, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->setFuckMM()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->setFuckJumpTapA()V

    move v1, v5

    :goto_1a1
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_2ea

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadGetLink;

    iget-object v1, p0, Lau/com/stklab/minepro/mineBeta;->updateVersionHanlder:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lau/com/stklab/minepro/thread/ThreadGetLink;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_updateVersion:Lau/com/stklab/minepro/thread/ThreadGetLink;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadGetLink;->start()V

    const-string v1, "oid.com/getVi"

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->setFuckHack()V

    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->setFuckJumpTapB()V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lau/com/stklab/minepro/mineBeta$4;

    invoke-direct {v2, p0}, Lau/com/stklab/minepro/mineBeta$4;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "deoLink.html"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->getVideoLinkP2:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lau/com/stklab/minepro/mineBeta$5;

    invoke-direct {v1, p0}, Lau/com/stklab/minepro/mineBeta$5;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lau/com/stklab/minepro/mineBeta$6;

    invoke-direct {v1, p0}, Lau/com/stklab/minepro/mineBeta$6;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lau/com/stklab/minepro/mineBeta$7;

    invoke-direct {v1, p0}, Lau/com/stklab/minepro/mineBeta$7;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lau/com/stklab/minepro/mineBeta$8;

    invoke-direct {v1, p0}, Lau/com/stklab/minepro/mineBeta$8;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lau/com/stklab/minepro/mineBeta$9;

    invoke-direct {v1, p0}, Lau/com/stklab/minepro/mineBeta$9;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->setFuckJumpTapC()V

    invoke-static {}, Lau/com/stklab/minepro/Search;->setFuckAdwhirlA()V

    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f050028

    invoke-virtual {p0, v2}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f050029

    invoke-virtual {p0, v3}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f05002a

    invoke-virtual {p0, v4}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v6, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v7, "English"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_399

    sget-object v6, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v7, "Korean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_320

    const-string v6, "\uc774\uc804"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\ub2e4\uc74c"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\ucc44\ub110"

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\ud398\uc774\uc9c0"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\uac80\uc0c9"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_299
    new-instance v6, Lau/com/stklab/minepro/mineBeta$10;

    invoke-direct {v6, p0, v0}, Lau/com/stklab/minepro/mineBeta$10;-><init>(Lau/com/stklab/minepro/mineBeta;Landroid/widget/Button;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lau/com/stklab/minepro/Search;->setFuckAdwhirlB()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->setFuckLoser()V

    new-instance v1, Lau/com/stklab/minepro/mineBeta$11;

    invoke-direct {v1, p0, v0}, Lau/com/stklab/minepro/mineBeta$11;-><init>(Lau/com/stklab/minepro/mineBeta;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/mineBeta$12;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/mineBeta$12;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/mineBeta$13;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/mineBeta$13;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lau/com/stklab/minepro/mineBeta$14;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/mineBeta$14;-><init>(Lau/com/stklab/minepro/mineBeta;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->fuck_loser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->big_fucker:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    if-nez v0, :cond_3b4

    const-string v0, "madthumbs"

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    :cond_2e6
    :goto_2e6
    invoke-static {}, Lau/com/stklab/minepro/Search;->setFuckAdwhirlC()V

    return-void

    :cond_2ea
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v2, Lau/com/stklab/minepro/mineBeta;->screenHeight:I

    add-int/lit8 v2, v2, -0x5a

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v2, Lau/com/stklab/minepro/mineBeta;->imageWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1a1

    :cond_320
    sget-object v6, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v7, "Germany"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_399

    sget-object v6, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v7, "ChineseTradition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34f

    const-string v6, "\u524d\u4e00\u9801"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u5f8c\u4e00\u9801"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u983b\u9053"

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u9801\u6578"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u641c\u5c0b"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_299

    :cond_34f
    sget-object v6, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v7, "ChineseSimplied"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_374

    const-string v6, "\u524d\u4e00\u9875"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u540e\u4e00\u9875"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u9891\u9053"

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u9875\u6570"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u641c\u5bfb"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_299

    :cond_374
    sget-object v6, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v7, "Japanese"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_399

    const-string v6, "\u524d"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u5f8c"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u30c1\u30e3\u30cd\u30eb"

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u30da\u30fc\u30b8"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u691c\u7d22"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_299

    :cond_399
    const-string v6, "prev"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "next"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "Channel"

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "Page"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "Search"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_299

    :cond_3b4
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d6

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2e6

    :cond_3d6
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f8

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2e6

    :cond_3f8
    move v1, v5

    :goto_3f9
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_2e6

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f9
.end method

.method public loadMobfoxAds()V
    .registers 9

    const/4 v4, 0x1

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/adsdk/sdk/AdManager;

    const-string v1, "http://my.mobfox.com/vrequest.php"

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sget-object v7, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    sget-object v7, Lau/com/stklab/minepro/mineBeta;->fuck_loser:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mManager:Lcom/adsdk/sdk/AdManager;

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/AdManager;->setListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    :cond_4f
    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    const-string v2, "http://my.mobfox.com/request.php"

    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sget-object v7, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    sget-object v7, Lau/com/stklab/minepro/mineBeta;->fuck_loser:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public noAdFound()V
    .registers 1

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/mineBeta;->setContentView(I)V

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->init()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->loadMobfoxAds()V

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    invoke-virtual {p0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lau/com/stklab/minepro/mineBeta;->updateImageViewHanlder:Landroid/os/Handler;

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->start()V

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadStatUpdate;

    invoke-direct {v0}, Lau/com/stklab/minepro/thread/ThreadStatUpdate;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_statUpdate:Lau/com/stklab/minepro/thread/ThreadStatUpdate;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadStatUpdate;->start()V

    new-instance v0, Lau/com/stklab/minepro/executer/Engine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lau/com/stklab/minepro/executer/Engine;-><init>(Z)V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->t_engine:Lau/com/stklab/minepro/executer/Engine;

    invoke-virtual {v0}, Lau/com/stklab/minepro/executer/Engine;->start()V

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "\ucd08\uae30\ud654\uc911.."

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc911, \ucd08\uae30\ud654\ud558\ub294 \ub370 \uc57d 1 \ubd84 \uc18c\uc694 \n \ucde8\uc18c\ud558\uba74 \ud654\uba74\uc73c\ub85c \ubcf5\uadc0"

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    :goto_59
    return-void

    :cond_5a
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "Die Initialisierung.."

    const-string v1, "Dauert etwa 1 Minute, um die Netzwerkverbindung zu initialisieren \n Dr\u00fccken Sie die Eingabetaste um den Vorgang abzubrechen"

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto :goto_59

    :cond_6f
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "\u521d\u59cb\u5316.."

    const-string v1, "\u5927\u7d04\u9700\u89811\u5206\u9418\uff0c\u4ee5\u521d\u59cb\u5316\u7db2\u7d61\u9023\u63a5 \n \u6309\u8fd4\u56de\u9375\u53d6\u6d88"

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto :goto_59

    :cond_84
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "\u521d\u59cb\u5316.."

    const-string v1, "\u5927\u7d04\u9700\u89811\u5206\u9418\uff0c\u4ee5\u521d\u59cb\u5316\u7db2\u7d61\u9023\u63a5 \n \u6309\u8fd4\u56de\u952e\u53d6\u6d88"

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto :goto_59

    :cond_99
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "\u521d\u671f\u5316.."

    const-string v1, "\u30e1\u30e2\u30ea\u3092\u521d\u671f\u5316\u3059\u308b\u305f\u3081\u306b\u7d041\u5206\u304b\u304b\u308a \n "

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto :goto_59

    :cond_ae
    const-string v0, "Initializing.."

    const-string v1, "Takes about 1 minute to initialize network connection \n Press return to cancel"

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->pd:Landroid/app/ProgressDialog;

    goto :goto_59
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "About Us"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->release()V

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->release()V

    :cond_11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :goto_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sextube v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Website: http://sextube-android.com \n Contact: alex0260@hotmail.com"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_8

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public setFuckHack()V
    .registers 18

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v2, 0x3e

    const/16 v3, 0x3f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v5, 0xc

    const/16 v6, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v6, 0x2b

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v7, 0x14

    const/16 v8, 0x15

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v8, 0x26

    const/16 v9, 0x27

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v9, 0x19

    const/16 v10, 0x1a

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v10, 0x2d

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v12, 0x21

    const/16 v13, 0x22

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v13, 0x25

    const/16 v14, 0x26

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v14, 0x34

    const/16 v15, 0x35

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_hack:Ljava/lang/String;

    return-void
.end method

.method public setFuckLoser()V
    .registers 10

    const/16 v6, 0x2c

    const/16 v5, 0x2b

    const/16 v7, 0x26

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    sget-object v3, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v6, 0x27

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v7, 0x3c

    const/16 v8, 0x3d

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_loser:Ljava/lang/String;

    return-void
.end method

.method public setFuckMM()V
    .registers 13

    const/16 v9, 0x21

    const/16 v8, 0x20

    const/16 v7, 0x1a

    const/16 v6, 0x19

    const/16 v11, 0x2b

    sget-object v0, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v1, 0x26

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v4, 0x39

    const/16 v5, 0x3a

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v6, 0x2c

    invoke-virtual {v5, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lau/com/stklab/minepro/Preview;->catchLink:Ljava/lang/String;

    const/16 v9, 0x2a

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lau/com/stklab/minepro/mineBeta;->inferLink:Ljava/lang/String;

    const/16 v10, 0x2a

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->fuck_mm:Ljava/lang/String;

    return-void
.end method
