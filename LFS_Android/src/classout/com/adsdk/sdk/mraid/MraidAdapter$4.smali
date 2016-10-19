.class Lcom/adsdk/sdk/mraid/MraidAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$4;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$4;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter$4;->this$0:Lcom/adsdk/sdk/mraid/MraidAdapter;

    iget-object v0, v0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->loadFailUrl()V

    :cond_f
    return-void
.end method
