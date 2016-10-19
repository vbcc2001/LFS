.class Lcom/adsdk/sdk/AdManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$ad:Lcom/adsdk/sdk/video/RichMediaAd;

.field private final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .registers 4

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$6;->val$ad:Lcom/adsdk/sdk/video/RichMediaAd;

    iput-boolean p3, p0, Lcom/adsdk/sdk/AdManager$6;->val$ok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$6;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$6;->val$ad:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-boolean v2, p0, Lcom/adsdk/sdk/AdManager$6;->val$ok:Z

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adShown(Lcom/adsdk/sdk/Ad;Z)V

    return-void
.end method
