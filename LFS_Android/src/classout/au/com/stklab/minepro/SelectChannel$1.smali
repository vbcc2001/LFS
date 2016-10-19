.class Lau/com/stklab/minepro/SelectChannel$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/SelectChannel;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/SelectChannel;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/SelectChannel$1;->this$0:Lau/com/stklab/minepro/SelectChannel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/SelectChannel$1;->this$0:Lau/com/stklab/minepro/SelectChannel;

    const-class v2, Lau/com/stklab/minepro/mineBeta;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lau/com/stklab/minepro/SelectChannel$1;->this$0:Lau/com/stklab/minepro/SelectChannel;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/SelectChannel;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel$1;->this$0:Lau/com/stklab/minepro/SelectChannel;

    invoke-virtual {v0}, Lau/com/stklab/minepro/SelectChannel;->finish()V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
