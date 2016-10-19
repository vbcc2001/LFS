.class Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)Lcom/adsdk/sdk/video/RichMediaActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;)Lcom/adsdk/sdk/video/RichMediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    return-void
.end method
