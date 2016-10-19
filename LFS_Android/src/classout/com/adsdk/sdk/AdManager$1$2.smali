.class Lcom/adsdk/sdk/AdManager$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/AdManager$1;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager$1;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$1$2;->this$1:Lcom/adsdk/sdk/AdManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1$2;->this$1:Lcom/adsdk/sdk/AdManager$1;

    # getter for: Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager$1;->access$0(Lcom/adsdk/sdk/AdManager$1;)Lcom/adsdk/sdk/AdManager;

    move-result-object v0

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$3(Lcom/adsdk/sdk/AdManager;)V

    return-void
.end method
