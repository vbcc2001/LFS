.class Lau/com/stklab/minepro/Preview$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Preview;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Preview;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/Preview$6;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "spankwire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lau/com/stklab/minepro/Preview$6;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-virtual {v0}, Lau/com/stklab/minepro/Preview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Warning: only android 2.2 support online streaming ..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1a
    sget-object v0, Lau/com/stklab/minepro/Preview;->mp4Link:Ljava/lang/String;

    if-nez v0, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lau/com/stklab/minepro/Preview;->mp4Link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/Preview$6;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/Preview;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e
.end method
