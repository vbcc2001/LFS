.class Lau/com/stklab/minepro/mineBeta$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/mineBeta;

.field private final synthetic val$btn_prev:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta;Landroid/widget/Button;)V
    .registers 3

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    iput-object p2, p0, Lau/com/stklab/minepro/mineBeta$10;->val$btn_prev:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v3, 0x1

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goto page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2c
    move v1, v6

    :goto_2d
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_15f

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    iget-object v4, v4, Lau/com/stklab/minepro/mineBeta;->updateImageViewHanlder:Landroid/os/Handler;

    sget-object v5, Lau/com/stklab/minepro/mineBeta;->bitMapArray:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lau/com/stklab/minepro/mineBeta;->access$2(Lau/com/stklab/minepro/thread/ThreadUpdatePage;)V

    # getter for: Lau/com/stklab/minepro/mineBeta;->t_updatePage:Lau/com/stklab/minepro/thread/ThreadUpdatePage;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$3()Lau/com/stklab/minepro/thread/ThreadUpdatePage;

    move-result-object v0

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->start()V

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->val$btn_prev:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_62
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ud398\uc774\uc9c0 \uc774\ub3d9 #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    :cond_8d
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Going to Seite #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2c

    :cond_b9
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53bb\u9801 #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2c

    :cond_e5
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53bb\u9875 #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2c

    :cond_111
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u30da\u30fc\u30b8\u306b\u884c\u304f #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2c

    :cond_13d
    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$10;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Going to page #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2c

    :cond_15f
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->imgViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->bmLoading:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2d
.end method
