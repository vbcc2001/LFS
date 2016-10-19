.class Lau/com/stklab/minepro/mineBeta$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/mineBeta;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->readyArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b5

    :cond_19
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\ub85c\ub4dc \uc911 ... \uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub9ac\uc138\uc694"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3c
    return-void

    :cond_3d
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loading ... bitte haben Sie Geduld"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_57
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8f09\u5165\u4e2d...\u8acb\u8010\u5fc3\u7b49\u5f85"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_71
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8f7d\u5165\u4e2d...\u8bf7\u8010\u5fc3\u7b49\u5f85"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_8b
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8aad\u307f\u8fbc\u307f\u4e2d...\u3057\u3070\u3089\u304f\u304a\u5f85\u3061\u304f\u3060\u3055\u3044"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_a5
    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loading ... please be patient"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_b5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "English"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Korean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\ubbf8\ub9ac\ubcf4\uae30 \uc0dd\uc131\uc911..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_dd
    const-string v0, "number"

    const-string v2, "4"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "coverPicture"

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    iget-object v0, v0, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "videoId"

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    iget-object v0, v0, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mp4Link"

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    iget-object v0, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    const-class v3, Lau/com/stklab/minepro/Preview;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v1, v0}, Lau/com/stklab/minepro/mineBeta;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3c

    :cond_124
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Germany"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Laden Vorschau..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_dd

    :cond_13e
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "ChineseTradition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8f09\u5165\u9810\u89bd..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_dd

    :cond_158
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "ChineseSimplied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8f7d\u5165\u9884\u89c8..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_dd

    :cond_173
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v2, "Japanese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u30d7\u30ec\u30d3\u30e5\u30fc\u3092\u30ed\u30fc\u30c9\u3059\u308b..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_dd

    :cond_18e
    iget-object v0, p0, Lau/com/stklab/minepro/mineBeta$8;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-virtual {v0}, Lau/com/stklab/minepro/mineBeta;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "loading preview..."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_dd
.end method
