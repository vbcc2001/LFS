.class Lcom/adsdk/sdk/banner/ReloadTask;
.super Ljava/util/TimerTask;


# instance fields
.field private final mWebView:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/banner/ReloadTask;->mWebView:Lcom/adsdk/sdk/banner/AdView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/ReloadTask;->mWebView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->loadNextAd()V

    return-void
.end method
