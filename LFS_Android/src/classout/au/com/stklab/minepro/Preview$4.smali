.class Lau/com/stklab/minepro/Preview$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/Preview;

.field private final synthetic val$btn_next:Landroid/widget/Button;

.field private final synthetic val$btn_prev:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/Preview;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4

    iput-object p1, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    iput-object p2, p0, Lau/com/stklab/minepro/Preview$4;->val$btn_prev:Landroid/widget/Button;

    iput-object p3, p0, Lau/com/stklab/minepro/Preview$4;->val$btn_next:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v7, 0x0

    move v1, v7

    :goto_2
    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_54

    iget-object v8, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

    iget-object v1, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    invoke-virtual {v1}, Lau/com/stklab/minepro/Preview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "coverPicture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lau/com/stklab/minepro/Preview;->currentCategoryPage:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lau/com/stklab/minepro/Preview;->currentCategoryPage:I

    iget-object v3, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    # getter for: Lau/com/stklab/minepro/Preview;->thisAct:Landroid/app/Activity;
    invoke-static {v3}, Lau/com/stklab/minepro/Preview;->access$1(Lau/com/stklab/minepro/Preview;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    iget-object v4, v4, Lau/com/stklab/minepro/Preview;->updatePreviewImageViewHanlder:Landroid/os/Handler;

    iget-object v5, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    iget-object v5, v5, Lau/com/stklab/minepro/Preview;->bitMapArray:Ljava/util/ArrayList;

    sget-object v6, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lau/com/stklab/minepro/Preview;->access$2(Lau/com/stklab/minepro/Preview;Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;)V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview$4;->this$0:Lau/com/stklab/minepro/Preview;

    # getter for: Lau/com/stklab/minepro/Preview;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;
    invoke-static {v0}, Lau/com/stklab/minepro/Preview;->access$3(Lau/com/stklab/minepro/Preview;)Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePreviewPage;->start()V

    sget v0, Lau/com/stklab/minepro/Preview;->currentCategoryPage:I

    if-nez v0, :cond_65

    iget-object v0, p0, Lau/com/stklab/minepro/Preview$4;->val$btn_prev:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_53
    return-void

    :cond_54
    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_65
    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lau/com/stklab/minepro/Preview;->imgViewArray:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lau/com/stklab/minepro/Preview$4;->val$btn_next:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_53
.end method
