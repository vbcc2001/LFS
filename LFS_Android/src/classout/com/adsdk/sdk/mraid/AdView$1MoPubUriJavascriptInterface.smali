.class final Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)Lcom/adsdk/sdk/mraid/AdView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    return-object v0
.end method


# virtual methods
.method public final fireFinishLoad()Z
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    new-instance v1, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;-><init>(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)V

    # invokes: Lcom/adsdk/sdk/mraid/AdView;->postHandlerRunnable(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/AdView;->access$4(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
