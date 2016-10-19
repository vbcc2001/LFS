.class Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;

    # getter for: Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/adsdk/sdk/mraid/AdView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;->access$0(Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;)Lcom/adsdk/sdk/mraid/AdView;

    move-result-object v0

    # invokes: Lcom/adsdk/sdk/mraid/AdView;->adDidLoad()V
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/AdView;->access$0(Lcom/adsdk/sdk/mraid/AdView;)V

    return-void
.end method
