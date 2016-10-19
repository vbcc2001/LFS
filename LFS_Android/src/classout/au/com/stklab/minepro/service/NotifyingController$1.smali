.class Lau/com/stklab/minepro/service/NotifyingController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingController;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingController;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v0, v0, Lau/com/stklab/minepro/service/NotifyingController;->text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v2, v2, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    const-class v3, Lau/com/stklab/minepro/service/NotifyingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lau/com/stklab/minepro/service/NotifyingController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v0, v0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController$1;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    iget-object v0, v0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
