.class Lau/com/stklab/minepro/RandomView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/RandomView;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/RandomView;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "English"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Korean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\ubbf8\ub9ac\ubcf4\uae30 \uc0dd\uc131\uc911..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2a
    const-string v0, "number"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "coverPicture"

    sget-object v2, Lau/com/stklab/minepro/RandomView;->coverPicture:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "videoId"

    sget-object v2, Lau/com/stklab/minepro/RandomView;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mp4Link"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_60

    :cond_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    new-instance v2, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v2}, Lau/com/stklab/minepro/type/Video;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v2, Lau/com/stklab/minepro/RandomView;->videoId:Ljava/lang/String;

    iput-object v2, v0, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v2, Lau/com/stklab/minepro/RandomView;->coverPicture:Ljava/lang/String;

    iput-object v2, v0, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v2, Lau/com/stklab/minepro/RandomView;->detailPageLink:Ljava/lang/String;

    iput-object v2, v0, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    const-class v3, Lau/com/stklab/minepro/Preview;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/RandomView;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_96
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Germany"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Laden Vorschau..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a

    :cond_b1
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "ChineseTradition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8f09\u5165\u9810\u89bd..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a

    :cond_cc
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "ChineseSimplied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8f7d\u5165\u9884\u89c8..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a

    :cond_e7
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Japanese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u30d7\u30ec\u30d3\u30e5\u30fc\u3092\u30ed\u30fc\u30c9\u3059\u308b..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a

    :cond_102
    iget-object v0, p0, Lau/com/stklab/minepro/RandomView$3;->this$0:Lau/com/stklab/minepro/RandomView;

    invoke-virtual {v0}, Lau/com/stklab/minepro/RandomView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "loading preview..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a
.end method
