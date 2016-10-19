.class Lcom/adsdk/sdk/AdManager$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/AdManager$3;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager$3;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$3$1;->this$1:Lcom/adsdk/sdk/AdManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3$1;->this$1:Lcom/adsdk/sdk/AdManager$3;

    # getter for: Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager$3;->access$0(Lcom/adsdk/sdk/AdManager$3;)Lcom/adsdk/sdk/AdManager;

    move-result-object v0

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3$1;->this$1:Lcom/adsdk/sdk/AdManager$3;

    # getter for: Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager$3;->access$0(Lcom/adsdk/sdk/AdManager$3;)Lcom/adsdk/sdk/AdManager;

    move-result-object v1

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    return-void
.end method
