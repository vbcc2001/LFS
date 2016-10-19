.class Lcom/adsdk/sdk/AdManager$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/AdManager$3;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager$3;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$3$2;->this$1:Lcom/adsdk/sdk/AdManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3$2;->this$1:Lcom/adsdk/sdk/AdManager$3;

    # getter for: Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager$3;->access$0(Lcom/adsdk/sdk/AdManager$3;)Lcom/adsdk/sdk/AdManager;

    move-result-object v0

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$3(Lcom/adsdk/sdk/AdManager;)V

    return-void
.end method
