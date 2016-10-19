.class Lcom/adsdk/sdk/video/InterstitialController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/InterstitialController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/InterstitialController;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController$2;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$2;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->reload()V

    return-void
.end method
