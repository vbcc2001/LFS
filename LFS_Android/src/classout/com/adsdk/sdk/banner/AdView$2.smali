.class Lcom/adsdk/sdk/banner/AdView$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-boolean v0, v0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    if-eqz v0, :cond_1f

    const-string v0, "ADSDK"

    const-string v1, "Screen sleep with ad in foreground, disable refresh"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string v0, "ADSDK"

    const-string v1, "Screen sleep but ad in background; refresh should already be disabled"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-boolean v0, v0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    const-string v0, "ADSDK"

    const-string v1, "Screen wake / ad in foreground, reset refresh"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_46
    const-string v0, "ADSDK"

    const-string v1, "Screen wake but ad in background; don\'t enable refresh"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
