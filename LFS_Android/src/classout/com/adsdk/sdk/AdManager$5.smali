.class Lcom/adsdk/sdk/AdManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->noAdFound()V

    return-void
.end method
