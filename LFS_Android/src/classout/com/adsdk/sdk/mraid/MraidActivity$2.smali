.class Lcom/adsdk/sdk/mraid/MraidActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidActivity$2;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView;Z)V
    .registers 4

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity$2;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidActivity;->showInterstitialCloseButton()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity$2;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidActivity;->hideInterstitialCloseButton()V

    goto :goto_7
.end method
