.class Lau/com/stklab/minepro/Preview$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Preview;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Preview;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/Preview$5;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "madthumbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lau/com/stklab/minepro/utilities/TimeMgr;->getDateTime()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lau/com/stklab/minepro/Preview$5;->this$0:Lau/com/stklab/minepro/Preview;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lau/com/stklab/minepro/Preview$5;->this$0:Lau/com/stklab/minepro/Preview;

    const-class v3, Lau/com/stklab/minepro/service/NotifyingController;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lau/com/stklab/minepro/Preview;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
