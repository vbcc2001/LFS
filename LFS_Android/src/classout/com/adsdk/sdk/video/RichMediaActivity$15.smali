.class Lcom/adsdk/sdk/video/RichMediaActivity$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ADSDK"

    const-string v1, "RichMediaActivity mInterstitialClickListener"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->toggle()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$15;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->resetAutoclose()V

    :cond_21
    return-void
.end method
