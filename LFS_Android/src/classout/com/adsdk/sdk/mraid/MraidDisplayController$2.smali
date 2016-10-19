.class Lcom/adsdk/sdk/mraid/MraidDisplayController$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private mLastRotation:I

.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->getDisplayRotation()I
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$3(Lcom/adsdk/sdk/mraid/MraidDisplayController;)I

    move-result v0

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->mLastRotation:I

    if-eq v0, v1, :cond_1f

    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->mLastRotation:I

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->mLastRotation:I

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->onOrientationChanged(I)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$4(Lcom/adsdk/sdk/mraid/MraidDisplayController;I)V

    :cond_1f
    return-void
.end method
