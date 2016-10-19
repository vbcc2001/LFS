.class Lcom/adsdk/sdk/video/RichMediaActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ADSDK"

    const-string v1, "RichMediaActivity mOverlayClickListener"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    :cond_18
    return-void
.end method
