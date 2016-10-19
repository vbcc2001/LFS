.class Lau/com/stklab/minepro/mineBeta$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/mineBeta;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$12;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$12;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "please select a channel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/mineBeta$12;->this$0:Lau/com/stklab/minepro/mineBeta;

    const-class v2, Lau/com/stklab/minepro/SelectServer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lau/com/stklab/minepro/mineBeta$12;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/mineBeta;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
