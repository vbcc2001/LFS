.class Lcom/adsdk/sdk/video/InterstitialController$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/InterstitialController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/InterstitialController;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    # getter for: Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    # getter for: Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->goForward()V

    :cond_11
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController$3;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    # getter for: Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I
    invoke-static {v1}, Lcom/adsdk/sdk/video/InterstitialController;->access$1(Lcom/adsdk/sdk/video/InterstitialController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    return-void
.end method
