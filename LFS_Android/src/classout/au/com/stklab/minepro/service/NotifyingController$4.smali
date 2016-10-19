.class Lau/com/stklab/minepro/service/NotifyingController$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingController;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingController;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingController$4;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///sdcard/STK/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController$4;->this$0:Lau/com/stklab/minepro/service/NotifyingController;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/service/NotifyingController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
