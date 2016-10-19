.class Lcom/adsdk/sdk/mraid/MraidAbstractController;
.super Ljava/lang/Object;


# instance fields
.field private final mView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    return-void
.end method


# virtual methods
.method public getView()Lcom/adsdk/sdk/mraid/MraidView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method
