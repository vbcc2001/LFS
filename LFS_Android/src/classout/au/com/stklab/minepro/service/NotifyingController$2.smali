.class Lau/com/stklab/minepro/service/NotifyingController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingController;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingController;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v0, v0, Lau/com/stklab/minepro/service/NotifyingController;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v1, v1, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    const-class v3, Lau/com/stklab/minepro/service/NotifyingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lau/com/stklab/minepro/service/NotifyingController;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v0, v0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$2;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v0, v0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
