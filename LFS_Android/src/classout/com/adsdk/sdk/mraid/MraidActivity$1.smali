.class Lcom/adsdk/sdk/mraid/MraidActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidActivity$1;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity$1;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidActivity;->showInterstitialCloseButton()V

    return-void
.end method
