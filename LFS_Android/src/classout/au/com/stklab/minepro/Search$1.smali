.class Lau/com/stklab/minepro/Search$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Search;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Search;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/Search$1;->this$0:Lau/com/stklab/minepro/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lau/com/stklab/minepro/Search$1;->this$0:Lau/com/stklab/minepro/Search;

    invoke-virtual {v0}, Lau/com/stklab/minepro/Search;->finish()V

    return-void
.end method
