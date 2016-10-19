.class Lcom/adsdk/sdk/mraid/MraidBrowserController;
.super Lcom/adsdk/sdk/mraid/MraidAbstractController;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MraidBrowserController"


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidAbstractController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method protected open(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening in-app browser: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;->onOpen(Lcom/adsdk/sdk/mraid/MraidView;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_42
    return-void

    :cond_43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_42
.end method
