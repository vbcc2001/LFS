.class Lcom/adsdk/sdk/mraid/MraidAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v1, v1, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubView;->getAutorefreshEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidAdapter;->access$0(Lcom/adsdk/sdk/mraid/MraidAdapter;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setAutorefreshEnabled(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adPresentedOverlay()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$2;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->registerClick()V

    :cond_2b
    return-void
.end method
