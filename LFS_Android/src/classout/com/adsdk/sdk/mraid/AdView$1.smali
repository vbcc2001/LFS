.class Lcom/adsdk/sdk/mraid/AdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$1;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$1;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    return-void
.end method
