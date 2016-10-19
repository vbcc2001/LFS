.class Lcom/adsdk/sdk/mraid/MraidAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    # getter for: Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidAdapter;->access$1(Lcom/adsdk/sdk/mraid/MraidAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setAutorefreshEnabled(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$3;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClosed()V

    :cond_1c
    return-void
.end method
