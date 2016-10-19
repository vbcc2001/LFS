.class Lau/com/stklab/minepro/RandomView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/RandomView;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/RandomView;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/RandomView$4;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/RandomView$4;->this$0:Lau/com/stklab/minepro/RandomView;

    const-class v2, Lau/com/stklab/minepro/SelectServer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lau/com/stklab/minepro/RandomView$4;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/RandomView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$4;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->finish()V

    return-void
.end method
