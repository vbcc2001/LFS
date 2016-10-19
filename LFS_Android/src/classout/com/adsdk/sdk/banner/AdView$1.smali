.class Lcom/adsdk/sdk/banner/AdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->showContent()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$0(Lcom/adsdk/sdk/banner/AdView;)V

    return-void
.end method
