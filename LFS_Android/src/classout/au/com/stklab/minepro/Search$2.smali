.class Lau/com/stklab/minepro/Search$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Search;

.field private final synthetic val$et_search:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Search;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lau/com/stklab/minepro/Search$2;->this$0:Lau/com/stklab/minepro/Search;

    iput-object p2, p0, Lau/com/stklab/minepro/Search$2;->val$et_search:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lau/com/stklab/minepro/Search$2;->val$et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6e

    iget-object v1, p0, Lau/com/stklab/minepro/Search$2;->this$0:Lau/com/stklab/minepro/Search;

    iget-object v1, v1, Lau/com/stklab/minepro/Search;->thisAct:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searching for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " please wait..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    sput v4, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lau/com/stklab/minepro/Global;->searchPage:I

    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->search()V

    iget-object v0, p0, Lau/com/stklab/minepro/Search$2;->this$0:Lau/com/stklab/minepro/Search;

    invoke-virtual {v0}, Lau/com/stklab/minepro/Search;->finish()V

    :goto_6d
    return-void

    :cond_6e
    iget-object v0, p0, Lau/com/stklab/minepro/Search$2;->this$0:Lau/com/stklab/minepro/Search;

    iget-object v0, v0, Lau/com/stklab/minepro/Search;->thisAct:Landroid/app/Activity;

    const-string v1, "search key cannot be empty"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6d
.end method
