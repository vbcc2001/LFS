.class Lau/com/stklab/minepro/service/NotifyingController$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingController;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingController;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingController$3;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController$3;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    const-class v2, Lau/com/stklab/minepro/mineBeta;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController$3;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/service/NotifyingController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
